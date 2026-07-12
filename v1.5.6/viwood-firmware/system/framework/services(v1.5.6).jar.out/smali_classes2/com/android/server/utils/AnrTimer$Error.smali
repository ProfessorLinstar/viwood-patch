.class public final Lcom/android/server/utils/AnrTimer$Error;
.super Ljava/lang/Object;
.source "AnrTimer.java"


# instance fields
.field public final arg:Ljava/lang/String;

.field public final issue:Ljava/lang/String;

.field public final operation:Ljava/lang/String;

.field public final stack:[Ljava/lang/StackTraceElement;

.field public final tag:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/utils/AnrTimer$Error;Landroid/util/IndentingPrintWriter;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AnrTimer$Error;->dump(Landroid/util/IndentingPrintWriter;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$Error;->issue:Ljava/lang/String;

    .line 268
    iput-object p2, p0, Lcom/android/server/utils/AnrTimer$Error;->operation:Ljava/lang/String;

    .line 269
    iput-object p3, p0, Lcom/android/server/utils/AnrTimer$Error;->tag:Ljava/lang/String;

    .line 270
    iput-object p4, p0, Lcom/android/server/utils/AnrTimer$Error;->stack:[Ljava/lang/StackTraceElement;

    .line 271
    iput-object p5, p0, Lcom/android/server/utils/AnrTimer$Error;->arg:Ljava/lang/String;

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/utils/AnrTimer$Error;->timestamp:J

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;I)V
    .locals 4

    .line 279
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$Error;->operation:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$Error;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/utils/AnrTimer$Error;->issue:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/utils/AnrTimer$Error;->arg:Ljava/lang/String;

    filled-new-array {p2, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%2d: op:%s tag:%s issue:%s arg:%s\n"

    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 282
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$Error;->timestamp:J

    add-long/2addr v0, v2

    .line 283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    date:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p2, 0x0

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$Error;->stack:[Ljava/lang/StackTraceElement;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$Error;->stack:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method
