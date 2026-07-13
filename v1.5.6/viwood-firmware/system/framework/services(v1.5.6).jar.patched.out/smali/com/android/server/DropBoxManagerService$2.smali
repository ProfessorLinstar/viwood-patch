.class public Lcom/android/server/DropBoxManagerService$2;
.super Lcom/android/internal/os/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService;->addData(Ljava/lang/String;[BI)V

    return-void
.end method

.method public addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService;->addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getNextEntry(Ljava/lang/String;JLjava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 206
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DropBoxManagerService$2;->getNextEntryWithAttribution(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;

    move-result-object p0

    return-object p0
.end method

.method public getNextEntryWithAttribution(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/DropBoxManagerService;->getNextEntry(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;

    move-result-object p0

    return-object p0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 225
    new-instance v0, Lcom/android/server/DropBoxManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$2;->this$0:Lcom/android/server/DropBoxManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/DropBoxManagerService$ShellCmd;-><init>(Lcom/android/server/DropBoxManagerService;Lcom/android/server/DropBoxManagerService-IA;)V

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
