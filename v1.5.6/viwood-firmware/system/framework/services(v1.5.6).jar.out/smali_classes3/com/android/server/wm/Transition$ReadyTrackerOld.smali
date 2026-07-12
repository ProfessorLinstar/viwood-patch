.class public Lcom/android/server/wm/Transition$ReadyTrackerOld;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field public mDeferReadyDepth:I

.field public final mReadyGroups:Landroid/util/ArrayMap;

.field public mReadyOverride:Z

.field public mUsed:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReadyGroups(Lcom/android/server/wm/Transition$ReadyTrackerOld;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsed(Lcom/android/server/wm/Transition$ReadyTrackerOld;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3983
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 3990
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 3996
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    .line 4004
    iput v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/Transition-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;-><init>()V

    return-void
.end method


# virtual methods
.method public addGroup(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 4011
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4014
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public allReady()Z
    .locals 7

    .line 4044
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    iget v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    int-to-long v3, v3

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->groupsToString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x2d4b2a4e4122c1f1L    # -2.6525701205501237E90

    const/16 v4, 0x1f

    invoke-static {v6, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4049
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 4051
    :cond_1
    iget v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    if-lez v0, :cond_2

    return v2

    .line 4054
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    if-eqz v0, :cond_3

    return v1

    .line 4055
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    .line 4056
    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 4057
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 4058
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public final groupsToString()Ljava/lang/String;
    .locals 3

    .line 4064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 4065
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 4066
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4067
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 4068
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4070
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAllReady()V
    .locals 6

    .line 4037
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v4, 0x53cf4ee4ec6733bfL    # 5.2245209272189455E95

    invoke-static {v0, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4038
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 4039
    iput-boolean v1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    return-void
.end method

.method public setReadyFrom(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 4022
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_1

    .line 4025
    invoke-static {v1}, Lcom/android/server/wm/Transition;->-$$Nest$smisReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4026
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4027
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-wide p1, -0x4233d85c7c10c150L    # -5.121335342942837E-11

    const/4 v1, 0x3

    invoke-static {v0, p1, p2, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 4031
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-void
.end method
