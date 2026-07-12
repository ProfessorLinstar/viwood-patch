.class public Lcom/android/server/vr/SettingsObserver$2;
.super Landroid/database/ContentObserver;
.source "SettingsObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/SettingsObserver;

.field public final synthetic val$settingUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/SettingsObserver;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/server/vr/SettingsObserver$2;->this$0:Lcom/android/server/vr/SettingsObserver;

    iput-object p3, p0, Lcom/android/server/vr/SettingsObserver$2;->val$settingUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 87
    iget-object p1, p0, Lcom/android/server/vr/SettingsObserver$2;->val$settingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 88
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/vr/SettingsObserver$2;->this$0:Lcom/android/server/vr/SettingsObserver;

    invoke-static {p0}, Lcom/android/server/vr/SettingsObserver;->-$$Nest$msendSettingChanged(Lcom/android/server/vr/SettingsObserver;)V

    return-void
.end method
