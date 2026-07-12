.class public Lcom/android/server/wm/ActionChain;
.super Ljava/lang/Object;
.source "ActionChain.java"


# instance fields
.field public mCreateTimeMs:J

.field public mPrevious:Lcom/android/server/wm/ActionChain;

.field public final mSource:Ljava/lang/String;

.field public mTmpAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mTransition:Lcom/android/server/wm/Transition;

.field public mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/wm/Transition;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/android/server/wm/ActionChain;->mPrevious:Lcom/android/server/wm/ActionChain;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/android/server/wm/ActionChain;->mType:I

    .line 118
    iput-object p1, p0, Lcom/android/server/wm/ActionChain;->mSource:Ljava/lang/String;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActionChain;->mCreateTimeMs:J

    .line 120
    iput p2, p0, Lcom/android/server/wm/ActionChain;->mType:I

    .line 121
    iput-object p3, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz p3, :cond_0

    .line 123
    invoke-virtual {p3, p0}, Lcom/android/server/wm/Transition;->recordChain(Lcom/android/server/wm/ActionChain;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/android/server/wm/Transition;Lcom/android/server/wm/ActionChain-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActionChain;-><init>(Ljava/lang/String;ILcom/android/server/wm/Transition;)V

    return-void
.end method


# virtual methods
.method public collect(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 165
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->expectCollecting()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public final expectCollecting()Z
    .locals 4

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    const/4 v1, 0x0

    .line 143
    const-string v2, "TransitionChain"

    if-nez v0, :cond_0

    .line 144
    const-string p0, "Can\'t collect into a chain with no transition"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    const-string p0, "Trying to collect into a finished transition"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 151
    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eq v3, p0, :cond_2

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatch between current collecting ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 153
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") and chain ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final getTransition()Lcom/android/server/wm/Transition;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/server/wm/ActionChain;->mTmpAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public isFinishing()Z
    .locals 1

    .line 135
    iget p0, p0, Lcom/android/server/wm/ActionChain;->mType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
