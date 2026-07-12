.class public abstract Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public static renderBitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3

    .line 61
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 62
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B
    .locals 5

    .line 33
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x100

    if-eqz v0, :cond_2

    .line 35
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 39
    invoke-static {p0, v1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    .line 47
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    :try_start_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-static {v0}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    throw p0
.end method
