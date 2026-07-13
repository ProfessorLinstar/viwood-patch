.class public Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;
.super Ljava/lang/Object;
.source "SmallAreaDetectionController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/SmallAreaDetectionController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SmallAreaDetectionController;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/SmallAreaDetectionController;Lcom/android/server/display/SmallAreaDetectionController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;-><init>(Lcom/android/server/display/SmallAreaDetectionController;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 148
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "small_area_detection_allowlist"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/display/SmallAreaDetectionController;->updateAllowlist(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
