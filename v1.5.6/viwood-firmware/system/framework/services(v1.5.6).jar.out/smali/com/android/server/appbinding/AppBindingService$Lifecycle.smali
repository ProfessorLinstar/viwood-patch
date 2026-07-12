.class public Lcom/android/server/appbinding/AppBindingService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AppBindingService.java"


# instance fields
.field public final mService:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/android/server/appbinding/AppBindingService$Injector;

    invoke-direct {v0}, Lcom/android/server/appbinding/AppBindingService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/appbinding/AppBindingService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$Injector;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Lcom/android/server/appbinding/AppBindingService;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;-><init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService-IA;)V

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$monBootPhase(Lcom/android/server/appbinding/AppBindingService;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 120
    const-string v0, "app_binding"

    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$monStartUser(Lcom/android/server/appbinding/AppBindingService;I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$monStopUser(Lcom/android/server/appbinding/AppBindingService;I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$Lifecycle;->mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/appbinding/AppBindingService;->-$$Nest$monUnlockUser(Lcom/android/server/appbinding/AppBindingService;I)V

    return-void
.end method
