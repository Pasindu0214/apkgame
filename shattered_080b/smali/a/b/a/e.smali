.class public La/b/a/e;
.super Ljava/lang/Object;
.source "Gdx.java"


# static fields
.field public static a:La/b/a/a;

.field public static alternative:Z

.field public static b:La/b/a/f;

.field public static c:La/b/a/c;

.field public static completed:Z

.field public static d:La/b/a/g;

.field public static e:La/b/a/d;

.field public static f:La/b/a/j;

.field public static g:La/b/a/o/d;

.field public static given:Z

.field public static h:La/b/a/o/d;

.field public static i:La/b/a/m/a/k;

.field public static reforged:Z

.field public static spawned:Z


# direct methods
.method public static varargs a(Ljava/lang/Class;[Ljava/lang/Class;)La/b/a/r/s/a;
    .locals 2

    .line 4
    :try_start_0
    new-instance v0, La/b/a/r/s/a;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-direct {v0, p1}, La/b/a/r/s/a;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, La/b/a/r/s/b;

    const-string v1, "Constructor not found for class: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, La/b/a/r/s/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 6
    new-instance v0, La/b/a/r/s/b;

    const-string v1, "Security violation occurred while getting constructor for class: \'"

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, La/b/a/r/s/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Could not instantiate instance of class: "

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 2
    new-instance v2, La/b/a/r/s/b;

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, La/b/a/r/s/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 3
    new-instance v2, La/b/a/r/s/b;

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, La/b/a/r/s/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs b(Ljava/lang/Class;[Ljava/lang/Class;)La/b/a/r/s/a;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, La/b/a/r/s/a;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-direct {v0, p1}, La/b/a/r/s/a;-><init>(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, La/b/a/r/s/b;

    const-string v1, "Constructor not found for class: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, La/b/a/r/s/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 3
    new-instance v0, La/b/a/r/s/b;

    const-string v1, "Security violation while getting constructor for class: "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, La/b/a/r/s/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static challenges()I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "challenges"

    const/16 v2, 0x7f

    .line 1
    invoke-static {v1, v0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getInt(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static flipTags()Z
    .locals 2

    const-string v0, "flip_tags"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static flipToolbar()Z
    .locals 2

    const-string v0, "flipped_ui"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v1, "chrome.png"

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/16 v2, 0x4b

    const/16 v3, 0x16

    const/16 v4, 0x8

    const/16 v5, 0xd

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIIIIII)V

    return-object p0

    .line 3
    :pswitch_1
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/16 v2, 0x41

    const/16 v3, 0x16

    const/16 v4, 0x8

    const/16 v5, 0xd

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIIIIII)V

    return-object p0

    .line 4
    :pswitch_2
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/4 v6, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIII)V

    return-object p0

    .line 5
    :pswitch_3
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x5

    const/16 v7, 0xb

    const/4 v8, 0x5

    const/16 v9, 0xb

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIIIIII)V

    return-object p0

    .line 6
    :pswitch_4
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/16 v2, 0x35

    const/16 v3, 0x14

    const/16 v4, 0x9

    const/16 v5, 0x9

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIII)V

    return-object p0

    .line 7
    :pswitch_5
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/16 v6, 0xd

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIII)V

    return-object p0

    .line 8
    :pswitch_6
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/16 v2, 0x16

    const/16 v3, 0x12

    const/16 v4, 0x10

    const/16 v5, 0xe

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIII)V

    return-object p0

    .line 9
    :pswitch_7
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/16 v2, 0x3a

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/4 v5, 0x6

    const/4 v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIII)V

    return-object p0

    .line 10
    :pswitch_8
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/16 v2, 0x3a

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x6

    const/4 v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIII)V

    return-object p0

    .line 11
    :pswitch_9
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIII)V

    return-object p0

    .line 12
    :pswitch_a
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIII)V

    return-object p0

    .line 13
    :pswitch_b
    new-instance p0, Lcom/watabou/noosa/NinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/4 v6, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMobRotation(I)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;",
            ">;>;"
        }
    .end annotation

    move/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bat;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Rat;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Brute;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Monk;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Succubus;

    const-class v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Slime;

    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Crab;

    const-class v9, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Swarm;

    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Snake;

    const-class v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    const-class v12, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Golem;

    const-class v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM200;

    const-class v14, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Scorpio;

    const-class v15, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    const-class v16, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Spinner;

    const-class v17, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;

    const-class v18, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM100;

    const-class v19, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;

    const-class v20, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Warlock;

    const-class v21, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Gnoll;

    const-class v22, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Skeleton;

    move-object/from16 v23, v10

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/4 v10, 0x4

    packed-switch v0, :pswitch_data_0

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v12, 0x4

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    new-array v8, v12, [Ljava/lang/Class;

    aput-object v2, v8, v24

    aput-object v2, v8, v25

    aput-object v2, v8, v9

    aput-object v23, v8, v10

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 3
    :pswitch_0
    new-instance v6, Ljava/util/ArrayList;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v5, v8, v24

    aput-object v19, v8, v25

    const/4 v9, 0x2

    aput-object v19, v8, v9

    const/4 v12, 0x3

    aput-object v14, v8, v12

    aput-object v14, v8, v10

    const/4 v9, 0x5

    aput-object v14, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_1
    const/4 v9, 0x2

    const/4 v12, 0x3

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    new-array v8, v10, [Ljava/lang/Class;

    aput-object v5, v8, v24

    aput-object v19, v8, v25

    aput-object v19, v8, v9

    aput-object v14, v8, v12

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_2
    const/4 v9, 0x2

    .line 5
    new-instance v6, Ljava/util/ArrayList;

    new-array v8, v9, [Ljava/lang/Class;

    aput-object v5, v8, v24

    aput-object v19, v8, v25

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_3
    const/4 v9, 0x2

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v5, v8, v24

    aput-object v5, v8, v25

    aput-object v19, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_4
    const/4 v9, 0x2

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Class;

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->random()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v8, v24

    aput-object v20, v8, v25

    aput-object v20, v8, v9

    const/4 v9, 0x3

    aput-object v4, v8, v9

    aput-object v4, v8, v10

    const/4 v9, 0x5

    aput-object v12, v8, v9

    const/4 v9, 0x6

    aput-object v12, v8, v9

    const/4 v9, 0x7

    aput-object v12, v8, v9

    .line 9
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_5
    const/4 v9, 0x7

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    new-array v8, v9, [Ljava/lang/Class;

    aput-object v15, v8, v24

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->random()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v25

    const/4 v9, 0x2

    aput-object v20, v8, v9

    const/4 v9, 0x3

    aput-object v20, v8, v9

    aput-object v4, v8, v10

    const/4 v9, 0x5

    aput-object v4, v8, v9

    const/4 v9, 0x6

    aput-object v12, v8, v9

    .line 12
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_6
    const/4 v9, 0x5

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    new-array v8, v9, [Ljava/lang/Class;

    aput-object v15, v8, v24

    .line 14
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->random()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v25

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->random()Ljava/lang/Class;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    const/4 v9, 0x3

    aput-object v20, v8, v9

    aput-object v4, v8, v10

    .line 15
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_7
    const/4 v12, 0x2

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v15, v8, v24

    aput-object v15, v8, v25

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->random()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->random()Ljava/lang/Class;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    aput-object v20, v8, v10

    .line 18
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 19
    :pswitch_8
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v1, v8, v24

    aput-object v3, v8, v25

    .line 20
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Shaman;->random()Ljava/lang/Class;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Shaman;->random()Ljava/lang/Class;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    aput-object v16, v8, v10

    const/4 v9, 0x5

    aput-object v16, v8, v9

    const/4 v9, 0x6

    aput-object v13, v8, v9

    const/4 v9, 0x7

    aput-object v13, v8, v9

    .line 21
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 22
    :pswitch_9
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v1, v8, v24

    aput-object v3, v8, v25

    const/4 v9, 0x2

    aput-object v3, v8, v9

    .line 23
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Shaman;->random()Ljava/lang/Class;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Shaman;->random()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x5

    aput-object v16, v8, v9

    const/4 v9, 0x6

    aput-object v16, v8, v9

    const/4 v9, 0x7

    aput-object v13, v8, v9

    .line 24
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_a
    const/4 v9, 0x6

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    new-array v8, v9, [Ljava/lang/Class;

    aput-object v1, v8, v24

    aput-object v1, v8, v25

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    .line 26
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Shaman;->random()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x5

    aput-object v16, v8, v9

    .line 27
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_b
    const/4 v9, 0x5

    .line 28
    new-instance v6, Ljava/util/ArrayList;

    new-array v8, v9, [Ljava/lang/Class;

    aput-object v1, v8, v24

    aput-object v1, v8, v25

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const/4 v12, 0x3

    aput-object v3, v8, v12

    .line 29
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Shaman;->random()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v10

    .line 30
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_c
    const/4 v9, 0x2

    const/4 v12, 0x3

    .line 31
    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Class;

    aput-object v22, v10, v24

    aput-object v11, v10, v25

    aput-object v18, v10, v9

    aput-object v18, v10, v12

    const/4 v9, 0x4

    aput-object v17, v10, v9

    const/4 v9, 0x5

    aput-object v17, v10, v9

    const/4 v9, 0x6

    aput-object v6, v10, v9

    const/4 v9, 0x7

    aput-object v6, v10, v9

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 32
    :pswitch_d
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Class;

    aput-object v22, v9, v24

    aput-object v22, v9, v25

    const/4 v10, 0x2

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v18, v9, v10

    const/4 v10, 0x4

    aput-object v18, v9, v10

    const/4 v10, 0x5

    aput-object v17, v9, v10

    const/4 v10, 0x6

    aput-object v17, v9, v10

    const/4 v10, 0x7

    aput-object v6, v9, v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :pswitch_e
    const/4 v10, 0x6

    .line 33
    new-instance v6, Ljava/util/ArrayList;

    new-array v8, v10, [Ljava/lang/Class;

    aput-object v22, v8, v24

    aput-object v22, v8, v25

    const/4 v10, 0x2

    aput-object v22, v8, v10

    const/4 v12, 0x3

    aput-object v11, v8, v12

    const/16 v16, 0x4

    aput-object v18, v8, v16

    const/4 v9, 0x5

    aput-object v17, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :pswitch_f
    const/4 v6, 0x5

    const/4 v10, 0x2

    const/4 v12, 0x3

    const/16 v16, 0x4

    .line 34
    new-instance v8, Ljava/util/ArrayList;

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v22, v6, v24

    aput-object v22, v6, v25

    aput-object v22, v6, v10

    aput-object v11, v6, v12

    aput-object v9, v6, v16

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    move-object v6, v8

    goto :goto_1

    :pswitch_10
    const/4 v10, 0x2

    const/4 v12, 0x3

    const/16 v16, 0x4

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Class;

    aput-object v21, v12, v24

    aput-object v9, v12, v25

    aput-object v8, v12, v10

    const/16 v17, 0x3

    aput-object v8, v12, v17

    aput-object v7, v12, v16

    const/4 v8, 0x5

    aput-object v7, v12, v8

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :pswitch_11
    const/4 v6, 0x5

    const/4 v10, 0x2

    const/16 v16, 0x4

    const/16 v17, 0x3

    .line 36
    new-instance v12, Ljava/util/ArrayList;

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v2, v6, v24

    aput-object v23, v6, v25

    aput-object v21, v6, v10

    aput-object v21, v6, v17

    aput-object v21, v6, v16

    const/4 v10, 0x5

    aput-object v9, v6, v10

    const/4 v9, 0x6

    aput-object v8, v6, v9

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v12

    goto :goto_1

    :pswitch_12
    const/4 v10, 0x5

    .line 37
    new-instance v6, Ljava/util/ArrayList;

    new-array v8, v10, [Ljava/lang/Class;

    aput-object v2, v8, v24

    aput-object v2, v8, v25

    const/4 v9, 0x2

    aput-object v23, v8, v9

    const/4 v10, 0x3

    aput-object v21, v8, v10

    const/4 v12, 0x4

    aput-object v21, v8, v12

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    const v8, 0x3ccccccd    # 0.025f

    const/4 v9, 0x4

    if-eq v0, v9, :cond_3

    const/16 v9, 0x9

    if-eq v0, v9, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 38
    :cond_0
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 39
    :cond_1
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_4

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 40
    :cond_2
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 41
    :cond_3
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_4

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 42
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    const/16 v1, 0x32

    .line 43
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    if-nez v1, :cond_c

    .line 44
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-ne v1, v2, :cond_5

    .line 45
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Albino;

    goto :goto_4

    :cond_5
    if-ne v1, v7, :cond_6

    .line 46
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/CausticSlime;

    goto :goto_4

    :cond_6
    if-ne v1, v11, :cond_7

    .line 47
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Bandit;

    goto :goto_4

    :cond_7
    if-ne v1, v3, :cond_8

    .line 48
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredBrute;

    goto :goto_4

    :cond_8
    if-ne v1, v13, :cond_9

    .line 49
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM201;

    goto :goto_4

    :cond_9
    if-ne v1, v4, :cond_a

    .line 50
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Senior;

    goto :goto_4

    :cond_a
    if-ne v1, v14, :cond_b

    .line 51
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Acidic;

    .line 52
    :cond_b
    :goto_4
    invoke-virtual {v6, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 53
    :cond_d
    invoke-static {v6}, Lcom/watabou/utils/Random;->shuffle(Ljava/util/List;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static landscape()Ljava/lang/Boolean;
    .locals 2

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->get()La/b/a/k;

    move-result-object v0

    check-cast v0, La/b/a/m/a/t;

    .line 2
    iget-object v0, v0, La/b/a/m/a/t;->a:Landroid/content/SharedPreferences;

    const-string v1, "landscape"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static language()Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;
    .locals 2

    const-string v0, "language"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->matchLocale(Ljava/util/Locale;)Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->matchCode(Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object v0

    return-object v0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, La/b/a/e;->spawned:Z

    .line 2
    sput-boolean v0, La/b/a/e;->given:Z

    .line 3
    sput-boolean v0, La/b/a/e;->completed:Z

    .line 4
    sput-boolean v0, La/b/a/e;->reforged:Z

    return-void
.end method

.method public static storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 2
    sget-boolean v1, La/b/a/e;->spawned:Z

    const-string v2, "spawned"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 3
    sget-boolean v1, La/b/a/e;->spawned:Z

    if-eqz v1, :cond_0

    .line 4
    sget-boolean v1, La/b/a/e;->alternative:Z

    const-string v2, "alternative"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 5
    sget-boolean v1, La/b/a/e;->given:Z

    const-string v2, "given"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 6
    sget-boolean v1, La/b/a/e;->completed:Z

    const-string v2, "completed"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    .line 7
    sget-boolean v1, La/b/a/e;->reforged:Z

    const-string v2, "reforged"

    invoke-virtual {v0, v2, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    :cond_0
    const-string v1, "blacksmith"

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    return-void
.end method

.method public static systemFont()Z
    .locals 2

    .line 1
    invoke-static {}, La/b/a/e;->language()Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->KOREAN:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    if-eq v0, v1, :cond_1

    invoke-static {}, La/b/a/e;->language()Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->CHINESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    if-eq v0, v1, :cond_1

    invoke-static {}, La/b/a/e;->language()Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->JAPANESE:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "system_font"

    .line 2
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
