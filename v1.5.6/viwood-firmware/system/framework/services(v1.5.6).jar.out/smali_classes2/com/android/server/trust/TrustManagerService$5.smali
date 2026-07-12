.class public Lcom/android/server/trust/TrustManagerService$5;
.super Lcom/android/internal/content/PackageMonitor;
.source "TrustManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    .line 2273
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$5;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 2281
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$5;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mcheckNewAgentsForUser(Lcom/android/server/trust/TrustManagerService;I)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 0

    .line 2286
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$5;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mcheckNewAgentsForUser(Lcom/android/server/trust/TrustManagerService;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 2293
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$5;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mremoveAgentsOfPackage(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 1

    .line 2276
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$5;->this$0:Lcom/android/server/trust/TrustManagerService;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    return-void
.end method
