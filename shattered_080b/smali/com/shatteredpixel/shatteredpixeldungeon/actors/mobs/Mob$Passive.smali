.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Passive;
.super Ljava/lang/Object;
.source "Mob.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Passive"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Passive;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Passive;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    const/4 p1, 0x1

    return p1
.end method
