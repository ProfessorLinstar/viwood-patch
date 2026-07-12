.class public Lcom/android/server/pm/ApexManager$ActiveApexInfo;
.super Ljava/lang/Object;
.source "ApexManager.java"


# instance fields
.field public final activeApexChanged:Z

.field public final apexDirectory:Ljava/io/File;

.field public final apexFile:Ljava/io/File;

.field public final apexModuleName:Ljava/lang/String;

.field public final isFactory:Z

.field public final preInstalledApexPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/apex/ApexInfo;)V
    .locals 7

    .line 135
    iget-object v1, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v0, p1, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p1, Landroid/apex/ApexInfo;->isFactory:Z

    new-instance v5, Ljava/io/File;

    iget-object v0, p1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p1, Landroid/apex/ApexInfo;->activeApexChanged:Z

    move-object v0, p0

    .line 135
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLjava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLjava/io/File;Z)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    .line 128
    iput-object p3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 129
    iput-boolean p4, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->isFactory:Z

    .line 130
    iput-object p5, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexFile:Ljava/io/File;

    .line 131
    iput-boolean p6, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    return-void
.end method
