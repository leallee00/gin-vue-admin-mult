package utils

import (
	"crypto/hmac"
	"crypto/rand"
	"crypto/sha1"
	"encoding/base64"
	"encoding/hex"
	"github.com/gofrs/uuid/v5"
	"io"
)

func Sign(message string, secret string) string {
	key := []byte(secret)
	h := hmac.New(sha1.New, key)
	h.Write([]byte(message))
	return base64.StdEncoding.EncodeToString(h.Sum(nil))
}

func GenerateAccessKeyId() string {
	return uuid.Must(uuid.NewV4()).String()
}

func GenerateAccessKeySecret(keySize int) string {
	// 创建一个字节切片用于存储密钥
	key := make([]byte, keySize)
	// 使用加密的随机数生成器填充字节切片
	if _, err := io.ReadFull(rand.Reader, key); err != nil {
		return GenerateAccessKeyId()
	}

	// 将字节切片转换为十六进制字符串形式的密钥
	return hex.EncodeToString(key)
}
