.class public final Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;
.super Lcom/android/internal/util/RingBuffer;
.source "BroadcastResponseStatsLogger.java"


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    return-void
.end method


# virtual methods
.method public getContent(Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;)Ljava/lang/String;
    .locals 0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-interface {p0}, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;->reset()V

    .line 112
    check-cast p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;

    .line 113
    iput p1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->sourceUid:I

    .line 114
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUserId:I

    .line 115
    iput p8, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUidProcessState:I

    .line 116
    iput-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetPackage:Ljava/lang/String;

    .line 117
    iput-wide p4, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->idForResponseEvent:J

    .line 118
    iput-wide p6, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->timestampMs:J

    return-void
.end method

.method public logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    if-nez p0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-interface {p0}, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;->reset()V

    .line 128
    check-cast p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;

    .line 129
    iput p1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->type:I

    .line 130
    iput-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    .line 131
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->userId:I

    .line 132
    iput-wide p4, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->timestampMs:J

    return-void
.end method

.method public reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    .line 137
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 138
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->getContent(Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
