.class public final Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TextServicesManagerService.java"


# instance fields
.field public mService:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)Lcom/android/server/textservices/TextServicesManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 274
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/textservices/TextServicesManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 280
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;

    invoke-direct {v0, p0}, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;-><init>(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)V

    const-class v1, Lcom/android/server/textservices/TextServicesManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 288
    const-string/jumbo v0, "textservices"

    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->onStopUser(I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->onUnlockUser(I)V

    return-void
.end method
