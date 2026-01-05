#!/bin/bash

# Основная информация о системе
echo "Имя пользователя: $(whoami)"
echo "Имя хоста: $(hostname)"
echo "Загрузка CPU (последние 1, 5 и 15 минут): $(uptime | awk -F'load average:' '{print $2}')"
echo "Использование памяти:"
free -h
echo "Использование диска:"
df -h
