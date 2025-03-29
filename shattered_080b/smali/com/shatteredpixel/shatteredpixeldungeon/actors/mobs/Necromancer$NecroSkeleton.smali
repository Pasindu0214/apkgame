.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Skeleton;
.source "Necromancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NecroSkeleton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton$NecroSkeletonSprite;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Skeleton;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton$NecroSkeletonSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/4 v0, -0x5

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    const/16 v0, 0x14

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    return-void
.end method

.method public static synthetic access$1100(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    return-void
.end method


# virtual methods
.method public spawningWeight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
