.class public final Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ContentProtectionConsentManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;


# direct methods
.method public constructor <init>(Lcom/android/server/contentprotection/ContentProtectionConsentManager;Landroid/os/Handler;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;->this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    .line 159
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo p2, "package_verifier_user_consent"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "content_protection_user_consent"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring unexpected property: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProtectionConsentManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_2
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;->this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    invoke-static {p0}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->-$$Nest$mreadContentProtectionUserConsentGranted(Lcom/android/server/contentprotection/ContentProtectionConsentManager;)V

    return-void

    .line 173
    :cond_3
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;->this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    invoke-static {p0}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->-$$Nest$mreadPackageVerifierConsentGranted(Lcom/android/server/contentprotection/ContentProtectionConsentManager;)V

    return-void
.end method
