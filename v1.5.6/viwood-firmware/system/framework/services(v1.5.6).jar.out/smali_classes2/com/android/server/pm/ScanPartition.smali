.class public Lcom/android/server/pm/ScanPartition;
.super Landroid/content/pm/PackagePartitions$SystemPartition;
.source "ScanPartition.java"


# instance fields
.field public final apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

.field public final scanFlag:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 49
    invoke-static {p1}, Lcom/android/server/pm/ScanPartition;->scanFlagForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/pm/ScanPartition;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 61
    iget p1, p2, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    .line 62
    iput-object p3, p0, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    if-eqz p3, :cond_1

    const/high16 p2, 0x800000

    or-int/2addr p2, p1

    .line 65
    iget-boolean v0, p3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->isFactory:Z

    if-eqz v0, :cond_0

    const/high16 p2, 0x2800000

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    move p1, p2

    .line 68
    :goto_0
    iget-boolean p2, p3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    if-eqz p2, :cond_1

    const/high16 p2, 0x1000000

    or-int/2addr p1, p2

    .line 73
    :cond_1
    iput p1, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    return-void
.end method

.method public static scanFlagForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)I
    .locals 3

    .line 77
    iget v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/high16 p0, 0x200000

    return p0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine scan flag for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/high16 p0, 0x100000

    return p0

    :cond_2
    const/high16 p0, 0x40000

    return p0

    :cond_3
    const/high16 p0, 0x400000

    return p0

    :cond_4
    const/high16 p0, 0x80000

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
