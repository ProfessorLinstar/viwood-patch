.class public Lcom/android/server/contentprotection/ContentProtectionConsentManager;
.super Ljava/lang/Object;
.source "ContentProtectionConsentManager.java"


# instance fields
.field public volatile mCachedContentProtectionUserConsent:Z

.field public volatile mCachedPackageVerifierConsent:Z

.field public final mContentObserver:Landroid/database/ContentObserver;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDevicePolicyCache:Landroid/app/admin/DevicePolicyCache;

.field public final mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$mreadContentProtectionUserConsentGranted(Lcom/android/server/contentprotection/ContentProtectionConsentManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->readContentProtectionUserConsentGranted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadPackageVerifierConsentGranted(Lcom/android/server/contentprotection/ContentProtectionConsentManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->readPackageVerifierConsentGranted()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/app/admin/DevicePolicyCache;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    iput-object p3, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyCache:Landroid/app/admin/DevicePolicyCache;

    .line 72
    const-class p2, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object p2, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 73
    new-instance p2, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;-><init>(Lcom/android/server/contentprotection/ContentProtectionConsentManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 75
    const-string/jumbo p1, "package_verifier_user_consent"

    invoke-virtual {p0, p1}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->registerSettingsGlobalObserver(Ljava/lang/String;)V

    .line 76
    const-string p1, "content_protection_user_consent"

    invoke-virtual {p0, p1}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->registerSettingsGlobalObserver(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->readPackageVerifierConsentGranted()V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->readContentProtectionUserConsentGranted()V

    return-void
.end method


# virtual methods
.method public isConsentGranted(I)Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedPackageVerifierConsent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->isContentProtectionConsentGranted(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isContentProtectionConsentGranted(I)Z
    .locals 1

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->isUserOrganizationManaged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->isContentProtectionPolicyGranted(I)Z

    move-result p0

    return p0

    .line 144
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedContentProtectionUserConsent:Z

    return p0
.end method

.method public final isContentProtectionPolicyGranted(I)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyCache:Landroid/app/admin/DevicePolicyCache;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyCache;->getContentProtectionPolicy(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 131
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedContentProtectionUserConsent:Z

    return p0
.end method

.method public final isContentProtectionUserConsentGranted()Z
    .locals 2

    .line 101
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "content_protection_user_consent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final isPackageVerifierConsentGranted()Z
    .locals 2

    .line 91
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "package_verifier_user_consent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public final isUserOrganizationManaged(I)Z
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result p0

    return p0
.end method

.method public final readContentProtectionUserConsentGranted()V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->isContentProtectionUserConsentGranted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedContentProtectionUserConsent:Z

    return-void
.end method

.method public final readPackageVerifierConsentGranted()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->isPackageVerifierConsentGranted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedPackageVerifierConsent:Z

    return-void
.end method

.method public final registerSettingsGlobalObserver(Ljava/lang/String;)V
    .locals 0

    .line 148
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->registerSettingsObserver(Landroid/net/Uri;)V

    return-void
.end method

.method public final registerSettingsObserver(Landroid/net/Uri;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
