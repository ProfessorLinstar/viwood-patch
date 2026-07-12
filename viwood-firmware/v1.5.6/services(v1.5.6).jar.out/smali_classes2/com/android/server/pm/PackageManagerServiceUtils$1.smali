.class public Lcom/android/server/pm/PackageManagerServiceUtils$1;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 871
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".gz"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
