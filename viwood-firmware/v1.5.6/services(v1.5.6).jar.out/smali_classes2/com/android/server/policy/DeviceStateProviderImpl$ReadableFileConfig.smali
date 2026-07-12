.class public final Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;


# instance fields
.field public final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;->mFile:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lcom/android/server/policy/DeviceStateProviderImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public openRead()Ljava/io/InputStream;
    .locals 1

    .line 875
    new-instance v0, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;->mFile:Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
