.class public Lcom/android/server/pm/ApexManager$ScanResult;
.super Ljava/lang/Object;
.source "ApexManager.java"


# instance fields
.field public final apexInfo:Landroid/apex/ApexInfo;

.field public final packageName:Ljava/lang/String;

.field public final pkg:Lcom/android/server/pm/pkg/AndroidPackage;


# direct methods
.method public constructor <init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/pm/ApexManager$ScanResult;->apexInfo:Landroid/apex/ApexInfo;

    .line 102
    iput-object p2, p0, Lcom/android/server/pm/ApexManager$ScanResult;->pkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 103
    iput-object p3, p0, Lcom/android/server/pm/ApexManager$ScanResult;->packageName:Ljava/lang/String;

    return-void
.end method
