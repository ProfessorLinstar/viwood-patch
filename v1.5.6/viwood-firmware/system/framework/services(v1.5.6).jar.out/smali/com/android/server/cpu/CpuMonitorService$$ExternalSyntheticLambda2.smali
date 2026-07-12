.class public final synthetic Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda2;->f$0:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda2;->f$0:Landroid/util/IndentingPrintWriter;

    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/cpu/CpuMonitorService;->$r8$lambda$yhw1p2fEy0d9XrfYZa7jeG2YtJc(Landroid/util/IndentingPrintWriter;Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo;)V

    return-void
.end method
