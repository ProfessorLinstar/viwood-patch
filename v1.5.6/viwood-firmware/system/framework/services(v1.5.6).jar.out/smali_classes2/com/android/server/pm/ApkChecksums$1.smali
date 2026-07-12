.class public Lcom/android/server/pm/ApkChecksums$1;
.super Ljava/lang/Object;
.source "ApkChecksums.java"

# interfaces
.implements Landroid/util/apk/ByteBufferFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 592
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
