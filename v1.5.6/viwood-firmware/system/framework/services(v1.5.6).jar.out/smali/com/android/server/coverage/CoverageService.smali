.class public Lcom/android/server/coverage/CoverageService;
.super Landroid/os/Binder;
.source "CoverageService.java"


# static fields
.field public static final ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    :try_start_0
    const-string/jumbo v0, "org.jacoco.agent.rt.RT"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    sput-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 60
    new-instance v0, Lcom/android/server/coverage/CoverageService$CoverageCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/coverage/CoverageService$CoverageCommand;-><init>(Lcom/android/server/coverage/CoverageService-IA;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method
