.class public Lcom/android/server/people/data/ContactsQueryHelper;
.super Ljava/lang/Object;
.source "ContactsQueryHelper.java"


# instance fields
.field public mContactUri:Landroid/net/Uri;

.field public final mContext:Landroid/content/Context;

.field public mIsStarred:Z

.field public mLastUpdatedTimestamp:J

.field public mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContactUri()Landroid/net/Uri;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getLastUpdatedTimestamp()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public isStarred()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    return p0
.end method

.method public query(Ljava/lang/String;)Z
    .locals 4

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tel"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithPhoneNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 58
    :cond_1
    const-string v2, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithEmail(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 60
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10

    .line 116
    const-string v1, "ContactsQueryHelper"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    .line 122
    :try_start_1
    const-string p2, "Cursor is null when querying contact."

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 153
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception v0

    move-object p1, v0

    move p3, v3

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object p1, v0

    move p3, v3

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object p1, v0

    move p3, v3

    goto/16 :goto_9

    :cond_0
    return v3

    :catchall_0
    move-exception v0

    move-object p2, v0

    move p3, v3

    goto/16 :goto_4

    :cond_1
    move p2, v3

    move p3, p2

    .line 125
    :goto_0
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 127
    const-string p4, "_id"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 128
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 131
    const-string p4, "lookup"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 132
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v4, v5, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    .line 137
    const-string/jumbo p4, "starred"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 138
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    move p4, v0

    goto :goto_1

    :cond_2
    move p4, v3

    :goto_1
    iput-boolean p4, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    .line 141
    const-string p4, "has_phone_number"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 142
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eqz p2, :cond_3

    move p2, v0

    goto :goto_2

    :cond_3
    move p2, v3

    .line 145
    :goto_2
    const-string p4, "contact_last_updated_timestamp"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_4

    .line 148
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p4, v0

    move v3, p2

    move-object p2, p4

    goto :goto_4

    :cond_4
    :goto_3
    move p3, v0

    goto :goto_0

    .line 153
    :cond_5
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    move-object p1, v0

    move v3, p2

    goto :goto_6

    :catch_4
    move-exception v0

    move-object p1, v0

    move v3, p2

    goto :goto_8

    :catch_5
    move-exception v0

    move-object p1, v0

    move v3, p2

    goto :goto_9

    :goto_4
    if-eqz p1, :cond_6

    .line 119
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_6
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :catch_7
    move-exception v0

    move-object p1, v0

    goto :goto_8

    :catch_8
    move-exception v0

    move-object p1, v0

    goto :goto_9

    :cond_6
    :goto_5
    throw p2
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 158
    :goto_6
    const-string p2, "Exception when querying contacts."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    move p2, v3

    goto :goto_a

    .line 156
    :goto_8
    const-string p2, "Illegal Argument exception when querying contacts."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 154
    :goto_9
    const-string p2, "SQLite exception when querying contacts."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :goto_a
    if-eqz p3, :cond_7

    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    .line 161
    invoke-virtual {p0, v2}, Lcom/android/server/people/data/ContactsQueryHelper;->queryPhoneNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_7
    return p3
.end method

.method public final queryPhoneNumber(Ljava/lang/String;)Z
    .locals 8

    .line 167
    const-string v1, "ContactsQueryHelper"

    const-string v0, "data4"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 169
    const-string v5, "lookup = ?"

    .line 170
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    .line 171
    :try_start_0
    iget-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    .line 175
    :try_start_1
    const-string p0, "Cursor is null when querying contact phone number."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 186
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 178
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 183
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 186
    :cond_2
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_1
    if-eqz p1, :cond_3

    .line 171
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 187
    :goto_3
    const-string p1, "Exception when querying contact phone number."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/4 p0, 0x1

    return p0
.end method

.method public querySince(J)Z
    .locals 5

    .line 69
    const-string v0, "has_phone_number"

    const-string v1, "contact_last_updated_timestamp"

    const-string v2, "_id"

    const-string v3, "lookup"

    const-string/jumbo v4, "starred"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 74
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "contact_last_updated_timestamp > ?"

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final queryWithEmail(Ljava/lang/String;)Z
    .locals 1

    .line 102
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 103
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final queryWithPhoneNumber(Ljava/lang/String;)Z
    .locals 1

    .line 96
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 97
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final queryWithUri(Landroid/net/Uri;)Z
    .locals 4

    .line 108
    const-string/jumbo v0, "starred"

    const-string v1, "has_phone_number"

    const-string v2, "_id"

    const-string v3, "lookup"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
