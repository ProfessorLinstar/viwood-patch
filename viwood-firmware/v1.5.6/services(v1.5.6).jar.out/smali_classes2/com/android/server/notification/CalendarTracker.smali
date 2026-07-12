.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# static fields
.field public static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final INSTANCE_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field public final mObserver:Landroid/database/ContentObserver;

.field public mRegistered:Z

.field public final mSystemContext:Landroid/content/Context;

.field public final mUserContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserContext(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 43
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 48
    const-string v8, "calendar_id"

    const-string v9, "availability"

    const-string v1, "begin"

    const-string v2, "end"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "visible"

    const-string v5, "event_id"

    const-string v6, "calendar_displayName"

    const-string/jumbo v7, "ownerAccount"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 62
    const-string v0, "attendeeEmail"

    const-string v1, "attendeeStatus"

    const-string v2, "event_id"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    .line 78
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-void
.end method

.method public static attendeeStatusToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_0
    const-string p0, "ATTENDEE_STATUS_TENTATIVE"

    return-object p0

    .line 249
    :cond_1
    const-string p0, "ATTENDEE_STATUS_INVITED"

    return-object p0

    .line 248
    :cond_2
    const-string p0, "ATTENDEE_STATUS_DECLINED"

    return-object p0

    .line 247
    :cond_3
    const-string p0, "ATTENDEE_STATUS_ACCEPTED"

    return-object p0

    .line 246
    :cond_4
    const-string p0, "ATTENDEE_STATUS_NONE"

    return-object p0
.end method

.method public static availabilityToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVAILABILITY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    const-string p0, "AVAILABILITY_TENTATIVE"

    return-object p0

    .line 258
    :cond_1
    const-string p0, "AVAILABILITY_FREE"

    return-object p0

    .line 257
    :cond_2
    const-string p0, "AVAILABILITY_BUSY"

    return-object p0
.end method

.method public static meetsReply(II)Z
    .locals 3

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_5

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    if-ne p1, v2, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    if-eq p1, v2, :cond_4

    const/4 p0, 0x4

    if-ne p1, p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2

    :cond_5
    if-eq p1, v0, :cond_6

    return v2

    :cond_6
    return v1
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 122
    const-string v4, "ConditionProviders.CT"

    sget-object v5, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 123
    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v2

    .line 124
    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 125
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 127
    new-instance v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v5}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    .line 128
    iput-wide v6, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    const/4 v6, 0x0

    .line 130
    :try_start_0
    iget-object v7, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string v13, "begin ASC"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 132
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/notification/CalendarTracker;->getCalendarsWithAccess()Landroid/util/ArraySet;

    move-result-object v7

    :goto_0
    if-eqz v6, :cond_d

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    .line 134
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x1

    .line 135
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x2

    .line 136
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x3

    .line 137
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-ne v14, v11, :cond_0

    move v14, v11

    goto :goto_1

    :cond_0
    move v14, v8

    :goto_1
    const/4 v8, 0x4

    .line 138
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v11, 0x5

    .line 139
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v11, 0x6

    .line 140
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v11, 0x7

    .line 141
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/16 v11, 0x8

    .line 142
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 143
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 144
    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v3, :cond_1

    move/from16 v28, v2

    .line 145
    const-string/jumbo v2, "title=%s time=%s-%s vis=%s availability=%s eventId=%s name=%s owner=%s calId=%s canAccessCal=%s"

    move/from16 v29, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v9, v10}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v16, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 147
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 148
    invoke-static {v11}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 149
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v17, v3

    filled-new-array/range {v15 .. v24}, [Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v6

    move-object/from16 v15, v21

    move-object/from16 v6, v22

    .line 145
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v6, v16

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v6, v16

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_8

    :cond_1
    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v16, v6

    move-object/from16 v15, v21

    move-object/from16 v6, v22

    :goto_2
    cmp-long v2, p2, v9

    if-ltz v2, :cond_2

    cmp-long v2, p2, v12

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-eqz v14, :cond_5

    if-eqz v28, :cond_5

    .line 152
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 154
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 155
    invoke-static {v3, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v14, 0x1

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    :goto_5
    if-eq v11, v3, :cond_6

    const/16 v25, 0x1

    goto :goto_6

    :cond_6
    const/16 v25, 0x0

    :goto_6
    if-eqz v14, :cond_c

    if-eqz v25, :cond_c

    if-eqz v29, :cond_7

    .line 158
    const-string v3, "  MEETS CALENDAR & AVAILABILITY"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_7
    invoke-virtual {v0, v1, v8, v6}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v29, :cond_8

    .line 161
    const-string v3, "    MEETS ATTENDEE"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v2, :cond_a

    if-eqz v29, :cond_9

    .line 163
    const-string v2, "      MEETS TIME"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v3, 0x1

    .line 164
    iput-boolean v3, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    :cond_a
    cmp-long v2, v9, p2

    if-lez v2, :cond_b

    .line 166
    iget-wide v2, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v2, v9, v2

    if-gez v2, :cond_b

    .line 167
    iput-wide v9, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_7

    :cond_b
    cmp-long v2, v12, p2

    if-lez v2, :cond_c

    .line 168
    iget-wide v2, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v2, v12, v2

    if-gez v2, :cond_c

    .line 169
    iput-wide v12, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    :goto_7
    move-wide/from16 v2, p2

    move-object/from16 v6, v16

    goto/16 :goto_0

    :cond_d
    move-object/from16 v16, v6

    if-eqz v16, :cond_e

    .line 178
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    .line 175
    :goto_8
    :try_start_3
    const-string v1, "error reading calendar"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_e

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    return-object v5

    :goto_9
    if-eqz v6, :cond_f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_f
    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 89
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 91
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "u="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public final getCalendarsWithAccess()Landroid/util/ArraySet;
    .locals 12

    .line 95
    const-string v1, "ConditionProviders.CT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 97
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    .line 103
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :goto_0
    if-eqz v11, :cond_0

    .line 105
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 106
    invoke-interface {v11, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    if-eqz v11, :cond_1

    .line 112
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 109
    :goto_2
    :try_start_1
    const-string v0, "error querying calendar content provider"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    :goto_3
    sget-boolean p0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCalendarsWithAccess took "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v4

    :goto_4
    if-eqz v11, :cond_3

    .line 112
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_3
    throw p0
.end method

.method public getUserId()I
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    return p0
.end method

.method public final meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p3

    .line 185
    const-string/jumbo v1, "meetsAttendee took "

    const-string v2, "ConditionProviders.CT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 186
    const-string v8, "event_id = ? AND attendeeEmail = ?"

    .line 187
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    .line 194
    :try_start_0
    iget-object v5, v5, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const/4 v5, 0x1

    if-eqz v12, :cond_0

    .line 196
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move/from16 p0, v5

    move/from16 v16, v11

    goto/16 :goto_4

    :cond_1
    move v6, v11

    .line 201
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 202
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 203
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 204
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v13, p1

    .line 205
    iget v14, v13, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v14, v10}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v14

    .line 206
    sget-boolean v15, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v15, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p0, v5

    const-string v5, ""

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "status=%s, meetsReply=%s"

    .line 209
    invoke-static {v10}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v11

    :try_start_1
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    .line 208
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move/from16 v5, p2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move/from16 v16, v11

    goto :goto_5

    :cond_2
    move/from16 p0, v5

    move/from16 v16, v11

    goto :goto_1

    :goto_2
    int-to-long v10, v5

    cmp-long v7, v7, v10

    if-nez v7, :cond_3

    .line 210
    invoke-static {v9, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    if-eqz v14, :cond_3

    move/from16 v7, p0

    goto :goto_3

    :cond_3
    move/from16 v7, v16

    :goto_3
    or-int/2addr v6, v7

    move/from16 v5, p0

    move/from16 v11, v16

    goto :goto_0

    .line 220
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 222
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v6

    .line 197
    :goto_4
    :try_start_2
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v5, "No attendees found"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz v12, :cond_7

    .line 220
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v0, :cond_8

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return p0

    .line 216
    :goto_5
    :try_start_3
    const-string v5, "error querying attendees content provider"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_9

    .line 220
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_9
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v16

    :goto_6
    if-eqz v12, :cond_b

    .line 220
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_b
    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_c
    throw v0
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-ne v0, p1, :cond_0

    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 85
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    return-void
.end method

.method public final setRegistered(Z)V
    .locals 6

    .line 227
    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 230
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    const-string v3, "ConditionProviders.CT"

    if-eqz v2, :cond_2

    .line 231
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister content observer u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 234
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 235
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRegistered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " u="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register content observer u="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_4
    sget-object p1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 239
    sget-object p1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 240
    sget-object p1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v3, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_5
    :goto_0
    return-void
.end method
