.class public Lcom/android/server/am/AppTimeTracker;
.super Ljava/lang/Object;
.source "AppTimeTracker.java"


# instance fields
.field public final mPackageTimes:Landroid/util/ArrayMap;

.field public final mReceiver:Landroid/app/PendingIntent;

.field public mStartedPackage:Ljava/lang/String;

.field public mStartedPackageTime:Landroid/util/MutableLong;

.field public mStartedTime:J

.field public mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 47
    iput-object p1, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/content/Context;)V
    .locals 6

    .line 83
    invoke-virtual {p0}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v1, "android.activity.usage_time"

    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/MutableLong;

    iget-wide v4, v4, Landroid/util/MutableLong;->value:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 90
    :cond_0
    const-string v2, "android.usage_time_packages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4

    .line 107
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mReceiver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTotalTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    iget-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 110
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPackageTime:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/MutableLong;

    iget-wide v1, v1, Landroid/util/MutableLong;->value:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 115
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 117
    iget-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    .line 118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mStartedTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 120
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mStartedPackage="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V
    .locals 14

    .line 126
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 127
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 128
    iget-wide v5, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    const-wide v10, 0x10300000002L

    invoke-virtual {p1, v10, v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v2, 0x0

    .line 129
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    const-wide v5, 0x20b00000003L

    .line 130
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 131
    iget-object v7, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 132
    iget-object v7, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/MutableLong;

    iget-wide v12, v7, Landroid/util/MutableLong;->value:J

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 133
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 135
    iget-wide v4, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    const-wide v2, 0x10b00000004L

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v1, p1

    .line 136
    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10900000005L

    .line 138
    iget-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 140
    :cond_1
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1

    .line 100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "AppTimeTracker #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppTimeTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 8

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 52
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 53
    iput-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    if-eqz v2, :cond_1

    .line 57
    iget-wide v6, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    sub-long/2addr v0, v6

    .line 58
    iget-wide v6, v2, Landroid/util/MutableLong;->value:J

    add-long/2addr v6, v0

    iput-wide v6, v2, Landroid/util/MutableLong;->value:J

    .line 59
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MutableLong;

    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Landroid/util/MutableLong;

    invoke-direct {v0, v4, v5}, Landroid/util/MutableLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    .line 65
    iget-object p0, p0, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 5

    .line 71
    iget-wide v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedTime:J

    sub-long/2addr v0, v2

    .line 73
    iget-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 74
    iget-object v2, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    if-eqz v2, :cond_0

    .line 75
    iget-wide v3, v2, Landroid/util/MutableLong;->value:J

    add-long/2addr v3, v0

    iput-wide v3, v2, Landroid/util/MutableLong;->value:J

    :cond_0
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackage:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/server/am/AppTimeTracker;->mStartedPackageTime:Landroid/util/MutableLong;

    :cond_1
    return-void
.end method
