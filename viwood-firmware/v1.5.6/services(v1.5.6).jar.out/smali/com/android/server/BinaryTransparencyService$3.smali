.class public Lcom/android/server/BinaryTransparencyService$3;
.super Landroid/content/pm/IStagedApexObserver$Stub;
.source "BinaryTransparencyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    .line 1633
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$3;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-direct {p0}, Landroid/content/pm/IStagedApexObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    .locals 2

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A new APEX has been staged for update. There are currently "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApexStagedEvent;->stagedApexInfos:[Landroid/content/pm/StagedApexInfo;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " APEX(s) staged for update. Scheduling measurement..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransparencyService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object p1, p0, Lcom/android/server/BinaryTransparencyService$3;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p1}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$3;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p1, p0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService;)V

    return-void
.end method
