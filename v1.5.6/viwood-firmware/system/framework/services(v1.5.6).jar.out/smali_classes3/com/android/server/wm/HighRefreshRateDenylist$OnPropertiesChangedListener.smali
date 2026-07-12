.class public Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;
.super Ljava/lang/Object;
.source "HighRefreshRateDenylist.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/HighRefreshRateDenylist;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/HighRefreshRateDenylist;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;->this$0:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/HighRefreshRateDenylist;Lcom/android/server/wm/HighRefreshRateDenylist-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;-><init>(Lcom/android/server/wm/HighRefreshRateDenylist;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 96
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "high_refresh_rate_blacklist"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;->this$0:Lcom/android/server/wm/HighRefreshRateDenylist;

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p0, p1}, Lcom/android/server/wm/HighRefreshRateDenylist;->-$$Nest$mupdateDenylist(Lcom/android/server/wm/HighRefreshRateDenylist;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
