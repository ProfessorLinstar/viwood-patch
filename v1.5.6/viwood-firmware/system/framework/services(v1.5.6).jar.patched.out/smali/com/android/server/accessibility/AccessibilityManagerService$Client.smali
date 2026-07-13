.class public Lcom/android/server/accessibility/AccessibilityManagerService$Client;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# instance fields
.field public final mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

.field public mDeviceId:I

.field public mLastSentRelevantEventTypes:I

.field public final mPackageNames:[Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;I)V
    .locals 1

    .line 5697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5694
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 5698
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 5699
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 5700
    iput p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    .line 5701
    iput p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 5702
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 5703
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmProxyManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/ProxyManager;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5704
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmProxyManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/ProxyManager;

    move-result-object p1

    .line 5705
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/ProxyManager;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5707
    :cond_0
    invoke-static {p1, p4, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mcomputeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 5709
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;ILcom/android/server/accessibility/AccessibilityManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;I)V

    return-void
.end method
