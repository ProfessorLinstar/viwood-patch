.class public Lcom/android/server/wm/TransitionController$QueuedTransition;
.super Ljava/lang/Object;
.source "TransitionController.java"


# instance fields
.field public final mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field public final mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

.field public final mTransition:Lcom/android/server/wm/Transition;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    .line 192
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    .line 193
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    .line 186
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    return-void
.end method
