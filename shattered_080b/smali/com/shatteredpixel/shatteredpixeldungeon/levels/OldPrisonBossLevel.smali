.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;
.source "OldPrisonBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$exitVisualWalls;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$exitVisual;,
        Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;
    }
.end annotation


# static fields
.field public static final MAP_ARENA:[I

.field public static final MAP_END:[I

.field public static final MAP_MAZE:[I

.field public static final MAP_START:[I


# instance fields
.field public state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

.field public storedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;"
        }
    .end annotation
.end field

.field public tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x400

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->MAP_START:[I

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->MAP_MAZE:[I

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->MAP_ARENA:[I

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->MAP_END:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x7
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0xa
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x5
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x5
        0x4
        0xc
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x4
        0x4
        0x4
        0xc
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0xc
        0x4
        0x4
        0x4
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x4
        0x4
        0x5
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x5
        0x4
        0x4
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0xc
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x4
        0x4
        0x5
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x5
        0x4
        0x4
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0xc
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0xc
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x7
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0xc
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x8
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x4
        0x1
        0x4
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x5
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x1
        0x1
        0x4
        0x1
        0x4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0xc
        0x4
        0x5
        0x4
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0xb
        0x13
        0x13
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x13
        0x13
        0x13
        0x13
        0x13
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;-><init>()V

    const v0, 0x6a723d

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    const v0, 0x88924c

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addVisuals()Lcom/watabou/noosa/Group;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;->addPrisonVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    return-object v0
.end method

.method public build()Z
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setSize(II)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->MAP_START:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->buildFlagMaps()V

    .line 4
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cleanWalls()V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    const/16 v0, 0x45

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->resetTraps()V

    const/4 v0, 0x1

    return v0
.end method

.method public final changeMap([I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->buildFlagMaps()V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cleanWalls()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    .line 5
    :goto_0
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v0, v1, :cond_2

    .line 6
    aget v1, p1, v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->entrance:I

    goto :goto_1

    .line 8
    :cond_0
    aget v1, p1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 9
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->exit:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visited:[Z

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setFalse([Z)V

    .line 11
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mapped:[Z

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->setFalse([Z)V

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    .line 13
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->fullyClear()V

    goto :goto_2

    .line 14
    :cond_3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->addVisuals()Lcom/watabou/noosa/Group;

    .line 15
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->visuals:Lcom/watabou/noosa/Group;

    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;->addPrisonVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;Lcom/watabou/noosa/Group;)V

    .line 16
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->resetTraps()V

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->resetMap()V

    .line 18
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    return-void
.end method

.method public final clearEntities(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    if-eqz p1, :cond_1

    .line 2
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->items:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->destroy()V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    if-eqz p1, :cond_4

    .line 6
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->returnPos:I

    .line 7
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    :cond_4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 10
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->boomerang:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_8

    aget-object v3, v0, v1

    .line 13
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    if-eq v3, v4, :cond_7

    if-eqz p1, :cond_6

    iget v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 14
    :cond_6
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 15
    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v3, :cond_7

    .line 16
    invoke-virtual {v3}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, Lcom/watabou/utils/SparseArray;->valueList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;

    if-eqz p1, :cond_a

    .line 18
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->inside(Lcom/watabou/utils/Point;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 19
    :cond_a
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->plants:Lcom/watabou/utils/SparseArray;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    invoke-virtual {v2, v1}, Lcom/watabou/utils/SparseArray;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    return-void
.end method

.method public createItems()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Bones;->get()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->setHauntedIfCursed()Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->REMAINS:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    .line 3
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/IronKey;-><init>(I)V

    const/4 v1, 0x4

    .line 4
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    add-int/lit16 v1, v1, 0x101

    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v2, v1

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    return-void
.end method

.method public createMobs()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    return-void
.end method

.method public occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;-><init>()V

    const/4 v1, 0x2

    const/16 v2, 0x19

    const/16 v3, 0x8

    const/16 v4, 0x20

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/utils/Rect;->inside(Lcom/watabou/utils/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->progress()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->MAZE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x4

    .line 7
    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cellToPoint(I)Lcom/watabou/utils/Point;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/watabou/utils/Rect;->inside(Lcom/watabou/utils/Point;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->progress()V

    :cond_1
    :goto_0
    return-void
.end method

.method public progress()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0x385

    if-eqz v0, :cond_c

    const/16 v3, 0x1f

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "snd_blast.mp3"

    const v6, 0xffffff

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v10, :cond_b

    if-eq v0, v7, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->unseal()V

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$exitVisual;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$exitVisual;-><init>()V

    const/16 v1, 0xb

    .line 4
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 5
    iput v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 6
    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customTiles:Ljava/util/HashSet;

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v11, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v11, v11, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 8
    check-cast v11, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    .line 9
    iget-object v11, v11, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->customTiles:Lcom/watabou/noosa/Group;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$exitVisualWalls;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$exitVisualWalls;-><init>()V

    .line 11
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileX:I

    .line 12
    iput v8, v0, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->tileY:I

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->customWalls:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 15
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    .line 16
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->customWalls:Lcom/watabou/noosa/Group;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/CustomTilemap;->create()Lcom/watabou/noosa/Tilemap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 18
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/16 v1, 0x365

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 19
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->interruptMotion()V

    .line 20
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 21
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 22
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    new-array v2, v9, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    array-length v2, v1

    :goto_0
    if-ge v9, v2, :cond_2

    aget-object v11, v1, v9

    .line 25
    iget-object v12, v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v12, v13, :cond_1

    invoke-virtual {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v12

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 26
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v12, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 28
    :cond_2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->MAP_END:[I

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->changeMap([I)V

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 30
    :cond_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->randomTenguArenaCell()I

    move-result v2

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 31
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->findMob(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    move-result-object v2

    if-nez v2, :cond_3

    .line 32
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v2, :cond_4

    iget v9, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 33
    :cond_4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;->die(Ljava/lang/Object;)V

    .line 35
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;-><init>()V

    const/16 v1, 0x19

    invoke-virtual {v0, v7, v1, v8, v3}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->clearEntities(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)V

    .line 36
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 37
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->randomTenguArenaCell()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    goto :goto_2

    .line 38
    :cond_6
    invoke-static {v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    .line 39
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 40
    invoke-virtual {v0, v5, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 41
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->WON:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    goto/16 :goto_4

    .line 42
    :cond_7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->interrupt()V

    .line 43
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/lit8 v2, v2, 0x69

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 44
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->interruptMotion()V

    .line 45
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 46
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->MAP_ARENA:[I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->changeMap([I)V

    .line 47
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v0, v9, v9, v1, v2}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->clearEntities(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)V

    .line 48
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 49
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v2, v3, :cond_8

    .line 50
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/lit8 v2, v2, 0x69

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 51
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    move-result-object v2

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    goto :goto_3

    .line 52
    :cond_9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 53
    :cond_a
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    .line 54
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 55
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 56
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_a

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    if-lt v0, v8, :cond_a

    .line 57
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 58
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;->notice()V

    .line 59
    invoke-static {v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    .line 60
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 61
    invoke-virtual {v0, v5, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 62
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->FIGHT_ARENA:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    goto/16 :goto_4

    .line 63
    :cond_b
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->MAP_MAZE:[I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->changeMap([I)V

    .line 64
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/standard/EmptyRoom;-><init>()V

    const/4 v2, 0x5

    const/16 v11, 0x20

    invoke-virtual {v0, v9, v2, v8, v11}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->clearEntities(Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;)V

    .line 65
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 66
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 68
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->kill()V

    .line 69
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/MazeRoom;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/MazeRoom;-><init>()V

    const/16 v8, 0x1d

    .line 70
    invoke-virtual {v0, v1, v10, v3, v8}, Lcom/watabou/utils/Rect;->set(IIII)Lcom/watabou/utils/Rect;

    .line 71
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    invoke-direct {v9, v1, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;-><init>(II)V

    invoke-virtual {v3, v2, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room;->connected:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/Room$Door;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/rooms/MazeRoom;->paint(Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 74
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->buildFlagMaps()V

    .line 75
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->cleanWalls()V

    .line 76
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->resetMap()V

    .line 77
    invoke-static {v6, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->flash(IZ)V

    .line 78
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 79
    invoke-virtual {v0, v5, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 80
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->MAZE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    goto :goto_4

    .line 81
    :cond_c
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_d

    return-void

    .line 82
    :cond_d
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->seal()V

    .line 83
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    const/16 v3, 0x325

    invoke-static {v3, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 84
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 85
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 86
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-ne v4, v5, :cond_e

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v4

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 87
    iput v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 88
    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 89
    :cond_f
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 90
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 91
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    .line 92
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;->notice()V

    .line 93
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->FIGHT_START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    :goto_4
    return-void
.end method

.method public randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 2

    .line 1
    :cond_0
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x45

    add-int/2addr v1, v0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 3
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 4
    :cond_1
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-nez v0, :cond_0

    return v1
.end method

.method public final randomTenguArenaCell()I
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    add-int/lit16 v1, v1, 0x343

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0x385

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->randomTenguArenaCell()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final resetTraps()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->traps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0}, La/b/a/r/g;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aget v2, v2, v1

    const/16 v3, 0x13

    if-ne v2, v3, :cond_0

    .line 4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrippingTrap;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrippingTrap;-><init>()V

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 5
    iput-boolean v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->active:Z

    .line 6
    invoke-virtual {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->setTrap(Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;I)Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 7
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    aput v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public respawner()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->getEnum(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->START:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;->MAZE:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 5
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "tengu"

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    :cond_3
    :goto_1
    const-string v0, "storeditems"

    .line 9
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/watabou/utils/Bundlable;

    .line 10
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->state:Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel$State;

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/lang/Enum;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->tengu:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldTengu;

    const-string v1, "tengu"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/OldPrisonBossLevel;->storedItems:Ljava/util/ArrayList;

    const-string v1, "storeditems"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public tileDesc(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileDesc(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "bookshelf_desc"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "empty_deco_desc"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tileName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->tileName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "water_name"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tilesTex()Ljava/lang/String;
    .locals 1

    const-string v0, "tiles_prison.png"

    return-object v0
.end method

.method public waterTex()Ljava/lang/String;
    .locals 1

    const-string v0, "water1.png"

    return-object v0
.end method
