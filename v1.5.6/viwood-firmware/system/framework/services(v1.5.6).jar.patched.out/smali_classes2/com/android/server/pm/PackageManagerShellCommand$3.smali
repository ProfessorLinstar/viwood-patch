.class public Lcom/android/server/pm/PackageManagerShellCommand$3;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .locals 0

    .line 1356
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 2

    .line 1359
    const-string v0, "--user"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1360
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    return v1

    .line 1362
    :cond_0
    const-string v0, "--brief"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    return v1

    .line 1365
    :cond_1
    const-string v0, "--components"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1366
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    return v1

    .line 1368
    :cond_2
    const-string v0, "--query-flags"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1369
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$3;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
