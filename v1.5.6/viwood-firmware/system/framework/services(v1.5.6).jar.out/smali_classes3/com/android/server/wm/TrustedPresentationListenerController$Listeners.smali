.class public Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;
.super Ljava/lang/Object;
.source "TrustedPresentationListenerController.java"


# instance fields
.field public mUniqueListeners:Landroid/util/ArrayMap;

.field public mWindowToListeners:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/wm/TrustedPresentationListenerController;


# direct methods
.method public static synthetic $r8$lambda$7tbqYYaR-2rHaNj46Xl6w5AjKrQ(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;Landroid/os/IBinder;)Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->lambda$register$1(Landroid/os/IBinder;)Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$om3LfNFW5-owznqNVHwRRJkAbXc(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .locals 0

    .line 104
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveListeners(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;Landroid/os/IBinder;Ljava/util/Optional;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->removeListeners(Landroid/os/IBinder;Ljava/util/Optional;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    .line 98
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;Lcom/android/server/wm/TrustedPresentationListenerController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$register$1(Landroid/os/IBinder;)Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;
    .locals 1

    .line 110
    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public register(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 105
    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, p2, v1}, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;-><init>(Landroid/window/TrustedPresentationThresholds;ILandroid/window/ITrustedPresentationListener;Lcom/android/server/wm/TrustedPresentationListenerController-IA;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {p2}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    new-instance p3, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;)V

    invoke-virtual {p2, p1, p3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->addInstance()V

    return-void
.end method

.method public final removeListeners(Landroid/os/IBinder;Ljava/util/Optional;)V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 139
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    .line 142
    iget-object v4, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    invoke-interface {v4}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1

    invoke-virtual {p2}, Ljava/util/Optional;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v3, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    .line 143
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 144
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public unregister(Landroid/window/ITrustedPresentationListener;I)V
    .locals 2

    .line 115
    invoke-interface {p1}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    if-nez v1, :cond_1

    .line 118
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    int-to-long p1, p2

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-wide p1, 0x2fd0fb8da7ea3c5fL    # 2.2916383957592763E-78

    invoke-static {v1, p1, p2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->removeInstance()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->removeListeners(Landroid/os/IBinder;Ljava/util/Optional;)V

    return-void
.end method
