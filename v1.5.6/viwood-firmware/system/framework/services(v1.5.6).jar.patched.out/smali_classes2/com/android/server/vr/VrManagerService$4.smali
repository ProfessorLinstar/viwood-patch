.class public Lcom/android/server/vr/VrManagerService$4;
.super Landroid/service/vr/IVrManager$Stub;
.source "VrManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 633
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmContext(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "VrManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 635
    :cond_0
    const-string p1, "********* Dump of VrManagerService *********"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VR mode is currently: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmVrModeAllowed(Lcom/android/server/vr/VrManagerService;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "allowed"

    goto :goto_0

    :cond_1
    const-string p3, "disallowed"

    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Persistent VR mode is currently: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmPersistentVrModeEnabled(Lcom/android/server/vr/VrManagerService;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "enabled"

    goto :goto_1

    :cond_2
    const-string p3, "disabled"

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Currently bound VR listener service: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmCurrentVrService(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object p3

    const-string v0, "None"

    if-nez p3, :cond_3

    move-object p3, v0

    goto :goto_2

    .line 641
    :cond_3
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmCurrentVrService(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 639
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Currently bound VR compositor service: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmCurrentVrCompositorService(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object p3

    if-nez p3, :cond_4

    move-object p3, v0

    goto :goto_3

    .line 644
    :cond_4
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmCurrentVrCompositorService(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 642
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const-string p1, "Previous state transitions:\n"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1, p2}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mdumpStateTransitions(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V

    .line 648
    const-string p1, "\n\nRemote Callbacks:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    :goto_4
    add-int/lit8 p3, p1, -0x1

    .line 650
    const-string v1, ","

    const-string v2, "  "

    if-lez p1, :cond_6

    .line 651
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez p3, :cond_5

    .line 653
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    move p1, p3

    goto :goto_4

    .line 655
    :cond_6
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 656
    const-string p1, "\n\nPersistent Vr State Remote Callbacks:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmPersistentVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    :goto_5
    add-int/lit8 p3, p1, -0x1

    if-lez p1, :cond_8

    .line 659
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmPersistentVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez p3, :cond_7

    .line 661
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    move p1, p3

    goto :goto_5

    .line 663
    :cond_8
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmPersistentVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 664
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    const-string p3, "Installed VrListenerService components:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    iget-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p3}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmCurrentVrModeUser(Lcom/android/server/vr/VrManagerService;)I

    move-result p3

    .line 667
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmComponentObserver(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/server/vr/EnabledComponentsObserver;->getInstalled(I)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 668
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_7

    .line 671
    :cond_9
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 672
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 669
    :cond_a
    :goto_7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    :cond_b
    const-string v1, "Enabled VrListenerService components:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmComponentObserver(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 678
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-nez p3, :cond_c

    goto :goto_9

    .line 681
    :cond_c
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    .line 682
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 679
    :cond_d
    :goto_9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    const-string p0, "********* End of VrManagerService Dump *********"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getPersistentVrModeEnabled()Z
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 597
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mgetPersistentVrMode(Lcom/android/server/vr/VrManagerService;)Z

    move-result p0

    return p0
.end method

.method public getVr2dDisplayId()I
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mgetVr2dDisplayId(Lcom/android/server/vr/VrManagerService;)I

    move-result p0

    return p0
.end method

.method public getVrModeState()Z
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 590
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mgetVrMode(Lcom/android/server/vr/VrManagerService;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 550
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$maddStateCallback(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    return-void

    .line 547
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback binder object is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 572
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$maddPersistentStateCallback(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void

    .line 569
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback binder object is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAndBindCompositor(Ljava/lang/String;)V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 621
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 622
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 621
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$msetAndBindCompositor(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 603
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$msetPersistentVrModeEnabled(Lcom/android/server/vr/VrManagerService;Z)V

    return-void
.end method

.method public setStandbyEnabled(Z)V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 628
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$msetStandbyEnabled(Lcom/android/server/vr/VrManagerService;Z)V

    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 610
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    return-void
.end method

.method public unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 561
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mremoveStateCallback(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    return-void

    .line 558
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback binder object is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 583
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mremovePersistentStateCallback(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void

    .line 580
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback binder object is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
