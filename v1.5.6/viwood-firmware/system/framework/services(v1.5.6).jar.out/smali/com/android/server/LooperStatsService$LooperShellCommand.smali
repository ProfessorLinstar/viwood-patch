.class public Lcom/android/server/LooperStatsService$LooperShellCommand;
.super Landroid/os/ShellCommand;
.source "LooperStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/LooperStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LooperStatsService;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/LooperStatsService;Lcom/android/server/LooperStatsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/LooperStatsService$LooperShellCommand;-><init>(Lcom/android/server/LooperStatsService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    .line 243
    const-string v0, "enable"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/LooperStatsService;->-$$Nest$msetEnabled(Lcom/android/server/LooperStatsService;Z)V

    return v1

    .line 246
    :cond_0
    const-string v0, "disable"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    invoke-static {p0, v1}, Lcom/android/server/LooperStatsService;->-$$Nest$msetEnabled(Lcom/android/server/LooperStatsService;Z)V

    return v1

    .line 249
    :cond_1
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    invoke-static {p0}, Lcom/android/server/LooperStatsService;->-$$Nest$fgetmStats(Lcom/android/server/LooperStatsService;)Lcom/android/internal/os/LooperStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/os/LooperStats;->reset()V

    return v1

    .line 252
    :cond_2
    const-string/jumbo v0, "sampling_interval"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p1

    .line 254
    iget-object p0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    invoke-static {p0, p1}, Lcom/android/server/LooperStatsService;->-$$Nest$msetSamplingInterval(Lcom/android/server/LooperStatsService;I)V

    return v1

    .line 257
    :cond_3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .locals 1

    .line 263
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 264
    const-string/jumbo v0, "looper_stats commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    const-string v0, "  enable: Enable collecting stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const-string v0, "  disable: Disable collecting stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const-string v0, "  sampling_interval: Change the sampling interval."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    const-string v0, "  reset: Reset stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
