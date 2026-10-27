package com.wia.util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class PasswordUtil {

	private static final int SALT_LEN = 16;

	public static String hash(String plainPassword) {
		byte[] salt = new byte[SALT_LEN];
		new SecureRandom().nextBytes(salt);
		byte[] digest = digest(salt, plainPassword);
		return toHex(salt) + "$" + toHex(digest);
	}

	public static boolean verify(String plainPassword, String stored) {
		if (stored == null || plainPassword == null || !stored.contains("$")) {
			return false;
		}
		String[] parts = stored.split("\\$", 2);
		byte[] salt = fromHex(parts[0]);
		byte[] digest = digest(salt, plainPassword);
		return toHex(digest).equals(parts[1]);
	}

	private static byte[] digest(byte[] salt, String plainPassword) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(salt);
			md.update(plainPassword.getBytes(StandardCharsets.UTF_8));
			return md.digest();
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException(e);
		}
	}

	private static String toHex(byte[] bytes) {
		StringBuilder sb = new StringBuilder();
		for (byte b : bytes) {
			sb.append(String.format("%02x", b));
		}
		return sb.toString();
	}

	private static byte[] fromHex(String hex) {
		int len = hex.length();
		byte[] out = new byte[len / 2];
		for (int i = 0; i < len; i += 2) {
			out[i / 2] = (byte) ((Character.digit(hex.charAt(i), 16) << 4) + Character.digit(hex.charAt(i + 1), 16));
		}
		return out;
	}
}
