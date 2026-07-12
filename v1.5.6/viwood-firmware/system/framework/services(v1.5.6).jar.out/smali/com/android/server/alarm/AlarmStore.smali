.class public interface abstract Lcom/android/server/alarm/AlarmStore;
.super Ljava/lang/Object;
.source "AlarmStore.java"


# virtual methods
.method public abstract add(Lcom/android/server/alarm/Alarm;)V
.end method

.method public abstract asList()Ljava/util/ArrayList;
.end method

.method public abstract dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
.end method

.method public abstract dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract getCount(Ljava/util/function/Predicate;)I
.end method

.method public abstract getNextDeliveryTime()J
.end method

.method public abstract getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;
.end method

.method public abstract getNextWakeupDeliveryTime()J
.end method

.method public abstract remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
.end method

.method public abstract removePendingAlarms(J)Ljava/util/ArrayList;
.end method

.method public abstract setAlarmClockRemovalListener(Ljava/lang/Runnable;)V
.end method

.method public abstract size()I
.end method

.method public abstract updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z
.end method
