.class public final Lcom/android/server/timezonedetector/ReferenceWithHistory;
.super Ljava/lang/Object;
.source "ReferenceWithHistory.java"


# instance fields
.field public final mMaxHistorySize:I

.field public mSetCount:I

.field public mValues:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 73
    iput p1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mMaxHistorySize:I

    return-void

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "maxHistorySize < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 114
    const-string/jumbo p0, "{Empty}"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_0
    iget v1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mSetCount:I

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    sub-int/2addr v1, v0

    .line 117
    iget-object p0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 118
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TimestampedValue;

    add-int/lit8 v2, v1, 0x1

    .line 120
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 121
    const-string v1, "@"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 123
    const-string v1, ": "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    .line 127
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/TimestampedValue;

    .line 83
    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHistoryCount()I
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    return p0
.end method

.method public set(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mMaxHistorySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mMaxHistorySize:I

    if-lt v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/os/TimestampedValue;

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 105
    iget p1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mSetCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mSetCount:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
