#!/bin/bash

LOG_FILE="system_info_$(date +%Y%m%d_%H%M%S).log"

# Начало отчёта
echo "=== Отчет о состоянии системы ===" | tee -a "$LOG_FILE"

# Основная информация о системе
echo "Имя пользователя: $(whoami)" | tee -a "$LOG_FILE"
echo "Имя хоста: $(hostname)" | tee -a "$LOG_FILE"
echo "Загрузка CPU (последние 1, 5 и 15 минут): $(uptime | awk -F'load average:' '{print $2}')" | tee -a "$LOG_FILE"

echo "Использование памяти:" | tee -a "$LOG_FILE"
free -h | tee -a "$LOG_FILE"

echo "Использование диска:" | tee -a "$LOG_FILE"
df -h | tee -a "$LOG_FILE"

echo "Лог сохранен в: $LOG_FILE" | tee -a "$LOG_FILE"
# Добавим дату запуска
echo "Скрипт запущен: $(date)" | tee -a "$LOG_FILE"
