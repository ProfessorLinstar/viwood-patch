.class public Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;
.super Ljava/lang/Object;
.source "OneFingerPanningSettingsProvider.java"


# static fields
.field static final KEY:Ljava/lang/String; = "accessibility_single_finger_panning_enabled"

.field public static final URI:Landroid/net/Uri;


# instance fields
.field public mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mContentResolver:Landroid/content/ContentResolver;

.field mObserver:Landroid/database/ContentObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCached(Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misOneFingerPanningEnabledInSetting(Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;Landroid/content/Context;Z)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->isOneFingerPanningEnabledInSetting(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "accessibility_single_finger_panning_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->isOneFingerPanningEnabledDefault(Landroid/content/Context;)Z

    move-result v0

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    new-instance p2, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p2, p0, v1, p1, v0}, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider$1;-><init>(Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;Landroid/os/Handler;Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mObserver:Landroid/database/ContentObserver;

    .line 65
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->isOneFingerPanningEnabledInSetting(Landroid/content/Context;Z)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p2, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->URI:Landroid/net/Uri;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static isOneFingerPanningEnabledDefault(Landroid/content/Context;)Z
    .locals 1

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111019c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public isOneFingerPanningEnabled()Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final isOneFingerPanningEnabledInSetting(Landroid/content/Context;Z)Z
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 86
    const-string v0, "accessibility_single_finger_panning_enabled"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public unregister()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method
