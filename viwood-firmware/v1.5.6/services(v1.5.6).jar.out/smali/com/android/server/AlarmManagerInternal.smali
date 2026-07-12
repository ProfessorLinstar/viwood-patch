.class public interface abstract Lcom/android/server/AlarmManagerInternal;
.super Ljava/lang/Object;
.source "AlarmManagerInternal.java"


# virtual methods
.method public abstract getNextAlarmTriggerTimeForUser(I)J
.end method

.method public abstract isIdling()Z
.end method

.method public abstract remove(Landroid/app/PendingIntent;)V
.end method

.method public abstract removeAlarmsForUid(I)V
.end method

.method public abstract setTime(JILjava/lang/String;)V
.end method

.method public abstract setTimeZone(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract shouldGetBucketElevation(Ljava/lang/String;I)Z
.end method
