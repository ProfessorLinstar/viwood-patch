.class public final Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;
.super Ljava/lang/Object;
.source "SmallAreaDetectionController.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/SmallAreaDetectionController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SmallAreaDetectionController;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/SmallAreaDetectionController;Lcom/android/server/display/SmallAreaDetectionController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;-><init>(Lcom/android/server/display/SmallAreaDetectionController;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-static {v0}, Lcom/android/server/display/SmallAreaDetectionController;->-$$Nest$fgetmLock(Lcom/android/server/display/SmallAreaDetectionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-static {v1}, Lcom/android/server/display/SmallAreaDetectionController;->-$$Nest$fgetmAllowPkgMap(Lcom/android/server/display/SmallAreaDetectionController;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-static {v1}, Lcom/android/server/display/SmallAreaDetectionController;->-$$Nest$fgetmAllowPkgMap(Lcom/android/server/display/SmallAreaDetectionController;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p1, v2

    .line 163
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 165
    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/SmallAreaDetectionController;->setSmallAreaDetectionThreshold(IF)V

    :cond_1
    return-void

    .line 163
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
