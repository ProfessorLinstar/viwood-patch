.class Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;
.super Ljava/lang/Object;
.source "TransferOwnershipMetadataManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOwnerTransferMetadataDir()Ljava/io/File;
    .locals 0

    .line 231
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
