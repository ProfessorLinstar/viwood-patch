.class Lcom/android/server/am/PhantomProcessList$Injector;
.super Ljava/lang/Object;
.source "PhantomProcessList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProcessName(I)Ljava/lang/String;
    .locals 0

    .line 614
    invoke-static {p1}, Lcom/android/server/am/PhantomProcessList;->getProcessName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public openCgroupProcs(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 606
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public readCgroupProcs(Ljava/io/InputStream;[BII)I
    .locals 0

    .line 610
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method
