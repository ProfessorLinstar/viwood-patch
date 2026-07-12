.class public Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider$1;
.super Landroid/database/ContentObserver;
.source "OneFingerPanningSettingsProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$defaultValue:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;Landroid/os/Handler;Landroid/content/Context;Z)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider$1;->this$0:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider$1;->val$defaultValue:Z

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider$1;->this$0:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->-$$Nest$fgetmCached(Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider$1;->this$0:Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider$1;->val$context:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider$1;->val$defaultValue:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;->-$$Nest$misOneFingerPanningEnabledInSetting(Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;Landroid/content/Context;Z)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
