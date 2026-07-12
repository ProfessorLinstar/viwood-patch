.class public abstract Lcom/android/server/ondeviceintelligence/BundleUtil;
.super Ljava/lang/Object;
.source "BundleUtil.java"


# direct methods
.method public static canMarshall(Ljava/lang/Object;)Z
    .locals 1

    .line 321
    instance-of v0, p0, [B

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-nez v0, :cond_1

    .line 322
    invoke-static {p0}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static ensureValidBundle(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 330
    invoke-virtual {p0}, Landroid/os/Bundle;->hasBinders()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Bundle should not contain IBinder objects."

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request passed is expected to be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sanitizeInferenceParams(Landroid/os/Bundle;)V
    .locals 3

    .line 65
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v2, Landroid/database/CursorWindow;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 85
    :cond_3
    instance-of v1, v2, Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 86
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    goto :goto_0

    .line 87
    :cond_4
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_5

    .line 88
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 89
    :cond_5
    instance-of v1, v2, Landroid/os/SharedMemory;

    if-eqz v1, :cond_6

    .line 90
    check-cast v2, Landroid/os/SharedMemory;

    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v2, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    goto :goto_0

    .line 91
    :cond_6
    instance-of v1, v2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 92
    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 93
    :cond_7
    instance-of v1, v2, [Landroid/os/Parcelable;

    if-eqz v1, :cond_8

    .line 94
    check-cast v2, [Landroid/os/Parcelable;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateParcelableArray([Landroid/os/Parcelable;)V

    goto :goto_0

    .line 96
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Parcelable type encountered in the Bundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_1
    return-void
.end method

.method public static sanitizeResponseParams(Landroid/os/Bundle;)V
    .locals 3

    .line 111
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    instance-of v1, v2, Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 133
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    goto :goto_0

    .line 134
    :cond_3
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_4

    .line 135
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 136
    :cond_4
    instance-of v1, v2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 137
    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 138
    :cond_5
    instance-of v1, v2, [Landroid/os/Parcelable;

    if-eqz v1, :cond_6

    .line 139
    check-cast v2, [Landroid/os/Parcelable;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateParcelableArray([Landroid/os/Parcelable;)V

    goto :goto_0

    .line 141
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Parcelable type encountered in the Bundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public static sanitizeStateParams(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 177
    :cond_2
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_3

    .line 178
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 180
    :cond_3
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Parcelable type encountered in the Bundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public static tryCloseResource(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p0, :cond_4

    .line 385
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 389
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 390
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 394
    :try_start_0
    instance-of v3, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_2

    .line 395
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 396
    :cond_2
    instance-of v3, v2, Landroid/database/CursorWindow;

    if-eqz v3, :cond_3

    .line 397
    check-cast v2, Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    goto :goto_0

    .line 398
    :cond_3
    instance-of v3, v2, Landroid/os/SharedMemory;

    if-eqz v3, :cond_1

    .line 400
    check-cast v2, Landroid/os/SharedMemory;

    invoke-virtual {v2}, Landroid/os/SharedMemory;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing resource with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BundleUtil"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static validateBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 372
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered a mutable Bitmap in the Bundle at key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateBitmapsImmutable([Landroid/os/Parcelable;)V
    .locals 3

    .line 379
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 380
    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static validateParcelableArray([Landroid/os/Parcelable;)V
    .locals 2

    .line 336
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p0, v1

    instance-of v0, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 339
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdsReadOnly([Landroid/os/Parcelable;)V

    return-void

    .line 340
    :cond_0
    array-length v0, p0

    if-lez v0, :cond_1

    aget-object v0, p0, v1

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 342
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmapsImmutable([Landroid/os/Parcelable;)V

    return-void

    .line 344
    :cond_1
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Could not cast to any known parcelable array"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    sget v0, Landroid/system/OsConstants;->F_GETFL:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result p0

    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr p0, v0

    .line 361
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne p0, v0, :cond_1

    :goto_0
    return-void

    .line 362
    :cond_1
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Bundle contains a parcel file descriptor which is not read-only."

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 366
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Invalid File descriptor passed in the Bundle."

    invoke-direct {v0, v1, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static validatePfdsReadOnly([Landroid/os/Parcelable;)V
    .locals 3

    .line 350
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 351
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static wrapWithValidation(Landroid/app/ondeviceintelligence/IResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;)Landroid/app/ondeviceintelligence/IResponseCallback;
    .locals 1

    .line 253
    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/server/ondeviceintelligence/BundleUtil$2;-><init>(Landroid/app/ondeviceintelligence/IResponseCallback;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;)V

    return-object v0
.end method

.method public static wrapWithValidation(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;)Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    .locals 1

    .line 193
    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/ondeviceintelligence/BundleUtil$1;-><init>(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;)V

    return-object v0
.end method

.method public static wrapWithValidation(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;)Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    .locals 1

    .line 302
    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$3;-><init>(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;)V

    return-object v0
.end method
