.class public Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BinaryTransparencyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    .line 1707
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/BinaryTransparencyService;Lcom/android/server/BinaryTransparencyService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1710
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1714
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1715
    const-string v0, "TransparencyService"

    if-nez p1, :cond_1

    .line 1716
    const-string p0, "Shouldn\'t happen: intent data is null!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1720
    :cond_1
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1721
    const-string p0, "Not an update. Skipping..."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1725
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1728
    iget-object p2, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 1729
    invoke-static {p2, p1}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$misPackagePreloaded(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1731
    :cond_3
    iget-object p2, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p2, p1}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$misPackageAnApex(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1732
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was updated. Scheduling measurement..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object p1, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p1}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p1, p0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService;)V

    :cond_4
    :goto_1
    return-void
.end method
