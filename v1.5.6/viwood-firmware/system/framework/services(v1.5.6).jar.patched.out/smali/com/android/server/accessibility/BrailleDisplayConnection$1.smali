.class public Lcom/android/server/accessibility/BrailleDisplayConnection$1;
.super Ljava/lang/Object;
.source "BrailleDisplayConnection.java"

# interfaces
.implements Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;


# instance fields
.field public final synthetic val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;


# direct methods
.method public static synthetic $r8$lambda$gAVzAwZTottxrrE8vfjrQ-KdaEM(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;Ljava/lang/Integer;)[B
    .locals 1

    .line 499
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawDescSize(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 501
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawDesc(II)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceBusType(Ljava/nio/file/Path;)I
    .locals 2

    .line 515
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 517
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getDeviceReportDescriptor(Ljava/nio/file/Path;)[B
    .locals 2

    .line 497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getHidrawNodePaths(Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 2

    .line 475
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    :try_start_0
    const-string v0, "hidraw*"

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :try_start_1
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    .line 479
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 482
    :cond_0
    :try_start_2
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_1
    if-eqz p1, :cond_1

    .line 476
    :try_start_3
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2

    .line 522
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUniqueId(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2

    .line 509
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 488
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 488
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
