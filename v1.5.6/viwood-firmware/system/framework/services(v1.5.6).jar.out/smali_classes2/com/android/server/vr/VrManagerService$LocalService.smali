.class public final Lcom/android/server/vr/VrManagerService$LocalService;
.super Lcom/android/server/vr/VrManagerInternal;
.source "VrManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;)V

    return-void
.end method


# virtual methods
.method public addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$maddPersistentStateCallback(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method public hasVrPackage(Landroid/content/ComponentName;I)I
    .locals 0

    .line 731
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mhasVrPackage(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public isCurrentVrListener(Ljava/lang/String;I)Z
    .locals 0

    .line 726
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->-$$Nest$misCurrentVrListener(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onScreenStateChanged(Z)V
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$msetScreenOn(Lcom/android/server/vr/VrManagerService;Z)V

    return-void
.end method

.method public setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static/range {p0 .. p5}, Lcom/android/server/vr/VrManagerService;->-$$Nest$msetVrMode(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return-void
.end method
