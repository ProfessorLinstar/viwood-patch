.class public Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# instance fields
.field public final data:[B

.field public final hintText:Ljava/lang/String;

.field public final keyphraseId:I

.field public final locale:Ljava/lang/String;

.field public final modelUuid:Ljava/lang/String;

.field public final recognitionModes:I

.field public final type:I

.field public final users:Ljava/lang/String;

.field public final vendorUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/database/Cursor;)V
    .locals 1

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    const-string/jumbo v0, "model_uuid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 383
    const-string/jumbo p1, "vendor_uuid"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 385
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    .line 387
    :goto_0
    const-string p1, "keyphrase_id"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    .line 388
    const-string/jumbo p1, "type"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->type:I

    .line 389
    const-string p1, "data"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    .line 390
    const-string/jumbo p1, "recognition_modes"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->recognitionModes:I

    .line 391
    const-string p1, "locale"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    .line 392
    const-string p1, "hint_text"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->hintText:Ljava/lang/String;

    .line 393
    const-string/jumbo p1, "users"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    return-void
.end method

.method public static stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 452
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z
    .locals 2

    .line 397
    iget v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    iget v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    .line 398
    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z
    .locals 4

    .line 411
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    if-ne p0, v1, :cond_1

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 423
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 424
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne p0, v0, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J
    .locals 3

    .line 432
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 433
    const-string/jumbo v1, "model_uuid"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    .line 435
    const-string/jumbo p1, "vendor_uuid"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    iget p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "keyphrase_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    iget p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    const-string p1, "data"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 440
    iget p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->recognitionModes:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "recognition_modes"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    const-string p1, "locale"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string p1, "hint_text"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->hintText:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string/jumbo p1, "users"

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string/jumbo p0, "sound_model"

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method
