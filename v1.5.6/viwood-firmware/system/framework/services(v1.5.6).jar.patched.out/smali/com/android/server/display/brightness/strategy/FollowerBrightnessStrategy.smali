.class public Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;
.super Ljava/lang/Object;
.source "FollowerBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mBrightnessToFollow:F

.field public mBrightnessToFollowSlowChange:Z

.field public final mDisplayId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mDisplayId:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 46
    iput p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 81
    const-string v0, "FollowerBrightnessStrategy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessToFollow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessToFollowSlowChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBrightnessToFollow()F
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 61
    const-string p0, "FollowerBrightnessStrategy"

    return-object p0
.end method

.method public getReason()I
    .locals 0

    .line 0
    const/16 p0, 0xa

    return p0
.end method

.method public setBrightnessToFollow(FZ)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    .line 73
    iput-boolean p2, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    return-void
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    .line 55
    iget p1, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollow:F

    .line 56
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->mBrightnessToFollowSlowChange:Z

    const/16 v1, 0xa

    .line 55
    invoke-static {v1, p1, v0, p0}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
