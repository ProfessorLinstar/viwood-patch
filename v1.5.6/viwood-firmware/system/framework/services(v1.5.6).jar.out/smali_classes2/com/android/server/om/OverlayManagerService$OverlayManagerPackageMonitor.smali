.class public final Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "OverlayManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method


# virtual methods
.method public onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-static {v0, p1, p2, p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mhandlePackageAdd(Lcom/android/server/om/OverlayManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-static {v0, p1, p2, p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mhandlePackageChange(Lcom/android/server/om/OverlayManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-static {v0, p1, p2, p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mhandlePackageRemove(Lcom/android/server/om/OverlayManagerService;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method
