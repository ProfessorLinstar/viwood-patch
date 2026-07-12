.class public Lcom/android/server/wm/Transition$ReadyCondition;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field public mAlternate:Ljava/lang/String;

.field public final mDebugTarget:Ljava/lang/Object;

.field public mMet:Z

.field public final mName:Ljava/lang/String;

.field public mTracker:Lcom/android/server/wm/Transition$ReadyTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3855
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    const/4 v0, 0x0

    .line 3858
    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 3861
    iput-object p1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    .line 3862
    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3855
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    const/4 v0, 0x0

    .line 3858
    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 3866
    iput-object p1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    .line 3867
    iput-object p2, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getDebugRep()Ljava/lang/String;
    .locals 2

    .line 3871
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3874
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public meet()V
    .locals 1

    .line 3902
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    if-eqz v0, :cond_0

    return-void

    .line 3903
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    if-eqz v0, :cond_1

    .line 3906
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Transition$ReadyTracker;->meet(Lcom/android/server/wm/Transition$ReadyCondition;)V

    return-void

    .line 3904
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t meet a condition before it is waited on"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public meetAlternate(Ljava/lang/String;)V
    .locals 1

    .line 3895
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    if-eqz v0, :cond_0

    return-void

    .line 3896
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 3897
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    return-void
.end method

.method public startTracking()V
    .locals 0

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyCondition;->getDebugRep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
