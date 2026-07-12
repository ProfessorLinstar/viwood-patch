.class public final Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .locals 0

    .line 7560
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7561
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 7562
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 7579
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/server/appop/AppOpsRestrictions;->clearGlobalRestrictions(Ljava/lang/Object;)Z

    .line 7580
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7581
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->destroy()V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 7585
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public hasRestriction(I)Z
    .locals 1

    .line 7570
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, p1}, Lcom/android/server/appop/AppOpsRestrictions;->getGlobalRestriction(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public isDefault()Z
    .locals 1

    .line 7574
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0}, Lcom/android/server/appop/AppOpsRestrictions;->hasGlobalRestrictions(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setRestriction(IZ)Z
    .locals 1

    .line 7566
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/appop/AppOpsRestrictions;->setGlobalRestriction(Ljava/lang/Object;IZ)Z

    move-result p0

    return p0
.end method
