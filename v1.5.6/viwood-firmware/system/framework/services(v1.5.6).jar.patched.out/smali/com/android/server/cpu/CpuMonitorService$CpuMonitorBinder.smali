.class public final Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;
.super Landroid/os/Binder;
.source "CpuMonitorService.java"


# instance fields
.field public final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field public final synthetic this$0:Lcom/android/server/cpu/CpuMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/cpu/CpuMonitorService;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->this$0:Lcom/android/server/cpu/CpuMonitorService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 522
    new-instance p1, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;

    invoke-direct {p1, p0}, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder$1;-><init>(Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;)V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/cpu/CpuMonitorService;Lcom/android/server/cpu/CpuMonitorService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;-><init>(Lcom/android/server/cpu/CpuMonitorService;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuMonitorBinder;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
