.class public Lcom/android/server/display/state/DisplayStateController;
.super Ljava/lang/Object;
.source "DisplayStateController.java"


# instance fields
.field public final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field public mDozeStateOverride:I

.field public mDozeStateOverrideReason:I

.field public mPerformScreenOffTransition:Z

.field public final mShouldSkipScreenOffTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerProximityStateController;Z)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 37
    iput v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    .line 38
    iput v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    .line 43
    iput-object p1, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 44
    iput-boolean p2, p0, Lcom/android/server/display/state/DisplayStateController;->mShouldSkipScreenOffTransition:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 121
    const-string v0, "DisplayStateController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v0, "-----------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShouldSkipScreenOffTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/state/DisplayStateController;->mShouldSkipScreenOffTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPerformScreenOffTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeStateOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->dumpLocal(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public overrideDozeScreenState(II)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    .line 105
    iput p2, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    return-void
.end method

.method public shouldPerformScreenOffTransition()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    return p0
.end method

.method public updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Landroid/util/Pair;
    .locals 4

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 67
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyReason:I

    .line 68
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 74
    :cond_0
    iget v1, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    if-eqz v1, :cond_1

    .line 76
    iget v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    goto :goto_0

    .line 77
    :cond_1
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v1, :cond_2

    .line 79
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 71
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/state/DisplayStateController;->mShouldSkipScreenOffTransition:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    move v1, v2

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->updateProximityState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)V

    if-eqz p2, :cond_5

    if-nez p3, :cond_5

    .line 94
    iget-object p0, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 99
    :cond_5
    :goto_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
