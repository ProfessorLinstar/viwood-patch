.class public Lcom/android/server/display/HighBrightnessModeMetadata;
.super Ljava/lang/Object;
.source "HighBrightnessModeMetadata.java"


# instance fields
.field public final mEvents:Ljava/util/ArrayDeque;

.field public mRunningStartTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    return-void
.end method


# virtual methods
.method public addHbmEvent(Lcom/android/server/display/HbmEvent;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public getHbmEventQueue()Ljava/util/ArrayDeque;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public getRunningStartTimeMillis()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    return-wide v0
.end method

.method public setRunningStartTimeMillis(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    return-void
.end method
